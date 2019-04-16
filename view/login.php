<h2>Login</h2>
<?php if(isset($error)): ?>
	<div class="alert alert-danger">
	<?php echo $error; ?>
</div>
<?php endif; ?>
<form action="" method="post">
	<input type="text" name="email" placeholder="user@calpoly.edu"><br>
	<input type="text" name="password" placeholder="Password"><br>
	<input type="submit" name="submit" value="Login">
</form>