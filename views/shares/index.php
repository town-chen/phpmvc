<div>
	<?php if(isset($_SESSION['is_logged_in'])) : ?>
	<a class="btn btn-success btn-share" href="<?php echo ROOT_PATH; ?>shares/add">Share Something</a>
	<?php endif; ?>
	<?php foreach($viewmodel as $item) : ?>
		<div class="well">
			<h3><?php echo $item['title']; ?></h3>
			<?php
			$cate = new CategoryModel();
			$cname = $cate->getCategoryById($item['cid']);
			//var_dump($cname);
			 ?>
			<small><?php echo $item['create_date']; ?></small><span class="label label-info"><?php echo $cname['name']; ?></span>
			<hr />
			<p><?php echo $item['body']; ?></p>


			<br />
			<a class="btn btn-default" href="<?php echo $item['link']; ?>" target="_blank">Go To Website</a>
		</div>
	<?php endforeach; ?>
</div>
