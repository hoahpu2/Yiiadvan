<?php

namespace frontend\controllers;

use app\models\User;
use app\models\UploadForm;
use app\models\UserSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * UserController implements the CRUD actions for User model.
 */
class UserController extends Controller
{
    /**
     * @inheritDoc
     */
    public function behaviors()
    {
        return array_merge(
            parent::behaviors(),
            [
                'verbs' => [
                    'class' => VerbFilter::className(),
                    'actions' => [
                        'delete' => ['POST'],
                    ],
                ],
            ]
        );
    }

    /**
     * Lists all User models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new UserSearch();
        $dataProvider = $searchModel->search($this->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single User model.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new User model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new User();
        $modelUp = new UploadForm();

        if ($this->request->isPost) {
            if ($model->load($this->request->post())) {
                
                $modelUp->imageFile = UploadedFile::getInstance($model, 'avatar_url');
                // $path = Yii::getAlias('@frontend') .'/web/upload/';
                $fileName = $modelUp->upload();


                // $model->avatar_url = UploadedFile::getInstance($model, 'avatar_url');
                // xx($model->avatar_url);
                // $model->avatar_url->saveAs($model->avatar_url->tempName, $path); // lưu ảnh vào thư mục uploads
                $model->avatar_url = $fileName;
                $model->save();

                return $this->redirect(['view', 'id' => $model->id]);
            }
        } else {
            $model->loadDefaultValues();
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing User model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $modelUp = new UploadForm();

        if ($this->request->isPost && $model->load($this->request->post())) {

            $modelUp->imageFile = UploadedFile::getInstance($model, 'avatar_url');
            // $path = Yii::getAlias('@frontend') .'/web/upload/';
            $fileName = $modelUp->upload();


            // $model->avatar_url = UploadedFile::getInstance($model, 'avatar_url');
            // xx($model->avatar_url);
            // $model->avatar_url->saveAs($model->avatar_url->tempName, $path); // lưu ảnh vào thư mục uploads
            $model->avatar_url = $fileName;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing User model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param int $id ID
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the User model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param int $id ID
     * @return User the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = User::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
