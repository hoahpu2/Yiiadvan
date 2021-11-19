<?php

namespace app\models;
use yii\web\UploadedFile;

use Yii;

/**
 * This is the model class for table "user".
 *
 * @property int $id
 * @property string|null $name
 * @property int|null $number_phone
 * @property string|null $sex
 * @property string|null $email
 * @property string|null $avatar_url
 * @property string|null $password
 * @property string|null $date_create
 * @property string|null $date_update
 * @property string|null $last_login
 */
class User extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'user';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['number_phone'], 'integer'],
            [['date_create', 'date_update', 'last_login'], 'safe'],
            [['name', 'password'], 'string', 'max' => 255],
            [['sex'], 'string', 'max' => 10],
            [['email'], 'string', 'max' => 100],
            // [['avatar_url'], 'file','extensions' => 'png, jpg'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'name' => 'Name',
            'number_phone' => 'Number Phone',
            'sex' => 'Sex',
            'email' => 'Email',
            'avatar_url' => 'Avatar Url',
            'password' => 'Password',
            'date_create' => 'Date Create',
            'date_update' => 'Date Update',
            'last_login' => 'Last Login',
        ];
    }
}
