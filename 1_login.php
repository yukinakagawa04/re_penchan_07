<?php
session_start();
$email = $_POST['email'];
$dsn = "mysql:host=localhost; dbname=mydb; charset=utf8";
$username = "root";
$password = "";
try {
    $dbh = new PDO($dsn, $username, $password);
} catch (PDOException $e) {
    $msg = $e->getMessage();
}

$sql = "SELECT * FROM users WHERE mail = :mail";
$stmt = $dbh->prepare($sql);
$stmt->bindValue(':email', $email);
$stmt->execute();
$member = $stmt->fetch();
//指定したハッシュがパスワードにマッチしているかチェック
if (password_verify($_POST['password'], $member['password'])) {
    //DBのユーザー情報をセッションに保存
    $_SESSION['id'] = $member['id'];
    $_SESSION['name'] = $member['name'];
    $msg = 'ログインしました。';
    $link = '<a href="2_top.php">ホーム</a>';
} else {
    $msg = 'メールアドレスもしくはパスワードが間違っています。';
    $link = '<a href="1_login_form.php">戻る</a>';
}
?>

<h1>
    <?php echo $msg; ?>
</h1>
<?php echo $link; ?>