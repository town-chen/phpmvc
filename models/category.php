<?php
/**
 * Category Model
 */
class CategoryModel extends Model
{

  /**
   * 得到所有分类
   * @return array
   */
  public function getCategorylist()
  {
    $this->query('SELECT * FROM category ORDER BY sort DESC');
		$rows = $this->resultSet();
		return $rows;
  }

  /**
   * 添加分类的操作
   * @return string
   */
  public function addCategory()
  {
    // Sanitize POST
		$post = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);

		if($post['submit']){
			if($post['name'] == ''){
				Messages::setMsg('Please Fill In All Fields', 'error');
				return;
			}
			// Insert into MySQL
			$this->query('INSERT INTO category (name,pid) VALUES(:name, :pid)');
			$this->bind(':name', $post['name']);
			$this->bind(':pid', 0);
			$this->execute();
			// Verify
			if($this->lastInsertId()){
				// Redirect
				header('Location: '.ROOT_URL.'category');
			}
		}
		return;
  }

  public function deleteCategory($cid)
  {
    $this->query('DELETE FROM category WHERE id = :cid ');
    $this->bind(':cid', $cid);
    $this->execute();
    // Verify
    if($this->lastInsertId()){
      // Redirect
      header('Location: '.ROOT_URL.'category');
    }
  }

  public function getCategoryById($cid)
  {
    $this->query('SELECT * FROM category WHERE id = :cid');
    $this->bind(':cid', $cid);
    return $this->single();
  }

}
