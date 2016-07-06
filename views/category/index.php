<div>
	<?php if(isset($_SESSION['is_logged_in'])) : ?>
	<a class="btn btn-success btn-share" href="<?php echo ROOT_PATH; ?>category/add">Add Category</a>
	<?php endif; ?>
	<div class="row">
		<?php foreach($viewmodel as $item) : ?>
			<button class="btn btn-primary" type="button">
			  <?php echo $item['name']; ?> <span class="badge"><?php echo $item['id']; ?></span>
			</button>
		<?php endforeach; ?>
	</div>
</div>
