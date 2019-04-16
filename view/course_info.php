<p>Welcome back <strong><?= $_SESSION['signed_in'] ?></strong>!</p>
<h1>Course info</h1>
<p>Select a course you want to know more about.</p>
<form action="" method="get">
	<select name="course_id" id="">
		<?php foreach($courses as $course): ?>
			<option value="<?= $course['id'] ?>"><?= $course['name'] ?></option>
		<?php endforeach; ?>
	</select>
	<input type="submit" value="Show">
</form>

<h2>Course</h2>

<?php if(isset($specificCourse)): ?> 
	<table>
	  <thead>
	    <tr>
	    	<?php foreach($specificCourseCoulmns as $column): ?>
	     		<th><?= $column ?></th>
  			<?php endforeach; ?>
	    </tr>
	  </thead>
	  <tbody>
    	<?php foreach($specificCourse as $row): ?>
		    <tr>
		      	<?php foreach($specificCourseCoulmns as $column): ?>
	     			<th><?= $row[$column] ?></th>
  				<?php endforeach; ?>
		    </tr>
		<?php endforeach; ?>
	  </tbody>
	</table>
<?php else: ?>
	<p>Select a course that you want to know more about</p>
<?php endif; ?>