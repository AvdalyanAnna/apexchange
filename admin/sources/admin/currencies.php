<?php
$b = protect($_GET['b']);

if($b == "add") { ?>

    <ol class="breadcrumb">
        <li><a href="./">CMS Administrator</a></li>
        <li><a href="./?a=currencies">Currencies</a></li>
        <li class="active">Add Currency</li>
    </ol>

    <div class="panel panel-default">
        <div class="panel-heading">
            Add currency
        </div>
        <div class="panel-body">

            <?php
            if(isset($_POST['btn_add'])) {
                $name = protect($_POST['name']);
                $value = protect($_POST['value']);
                $type = protect($_POST['type']);


                $check = $db->query("SELECT * FROM bit_currencies WHERE value='$value'");
                if(empty($name) or empty($value)) { echo error("All fields are required."); }
                elseif($check->num_rows>0) { echo error("This currency already exists."); }
                else {
                    $insert = $db->query("INSERT bit_currencies (name,value,type) VALUES ('$name','$value','$type')");
                    echo success("Currency <b>$name</b> was added successfully.");
                }
            }
            ?>

            <form action="" method="POST">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name">
                </div>
                <div class="form-group">
                    <label>Value</label>
                    <input type="text" class="form-control" name="value">
                </div>
                <div class="form-group">
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-control" name="type">
                            <option value="">Choose currency type</option>
                            <option value="valute">Valute</option>
                            <option value="coin">Coin</option>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" name="btn_add"><i class="fa fa-plus"></i> Add</button>
            </form>
        </div>
    </div>

<?php
} elseif ($b == 'edit'){
    $id = protect($_GET['id']);
    $query = $db->query("SELECT * FROM bit_currencies WHERE id='$id'");
    if($query->num_rows==0) { header("Location: ./?a=currencies"); }
    $row = $query->fetch_assoc();
    ?>
    <ol class="breadcrumb">
        <li><a href="./">CMS Administrator</a></li>
        <li><a href="./?a=currencies">Currencies</a></li>
        <li class="active">Edit currency</li>
    </ol>

    <div class="panel panel-default">
        <div class="panel-heading">
            Edit currency
        </div>
        <div class="panel-body">
            <?php
            if(isset($_POST['btn_save'])) {
                $name = protect($_POST['name']);
                $value = protect($_POST['value']);
                $type = protect($_POST['type']);
                $check = $db->query("SELECT * FROM bit_currencies WHERE value='$value'");
                if(empty($name) or empty($value)) { echo error("All fields are required."); }
                elseif($row['value'] !== $value && $check->num_rows>0) { echo error("This currency already exists."); }
                else {
                    $update = $db->query("UPDATE bit_currencies SET name='$name',value='$value', type='$type' WHERE id='$row[id]'");
                    $query = $db->query("SELECT * FROM bit_currencies WHERE id='$id'");
                    $row = $query->fetch_assoc();
                    echo success("Your changes was saved successfully.");
                }
            }
            ?>

            <form action="" method="POST">
                <div class="form-group">
                    <label>Name</label>
                    <input type="text" class="form-control" name="name" value="<?php echo $row['name']; ?>">
                </div>
                <div class="form-group">
                    <label>Value</label>
                    <input type="text" class="form-control" name="value" value="<?php echo $row['value']; ?>">
                </div>
                <div class="form-group">
                    <div class="form-group">
                        <label>Type</label>
                        <select class="form-control" name="type">
                            <option value="">Choose currency type</option>
                            <option value="valute" <?php if ($row['type'] == 'valute') :?> selected <?php endif ;?> >Valute</option>
                            <option value="coin" <?php if ($row['type'] == 'coin') :?> selected <?php endif ;?>>Coin</option>
                        </select>
                    </div>
                </div>
                <button type="submit" class="btn btn-primary" name="btn_save"><i class="fa fa-check"></i> Save changes</button>
            </form>
        </div>
    </div>
<?php
} elseif ($b == 'delete') {
    $id = protect($_GET['id']);
    $query = $db->query("SELECT * FROM bit_currencies WHERE id='$id'");
    if($query->num_rows==0) { header("Location: ./?a=currencies"); }
    $row = $query->fetch_assoc();
    ?>
    <ol class="breadcrumb">
        <li><a href="./">CMS Administrator</a></li>
        <li><a href="./?a=currencies">Currencies</a></li>
        <li class="active">Delete currency</li>
    </ol>

    <div class="panel panel-danger">
        <div class="panel-heading">
            Delete currency
        </div>
        <div class="panel-body">
            <?php
            if(isset($_GET['confirm'])) {
                $delete = $db->query("DELETE FROM bit_currencies WHERE id='$row[id]'");
                echo success("Currency <b>$row[name]</b> was deleted.");
            } else {
                echo info("Are you sure you want to delete currency <b>$row[name]</b>?");
                echo '<a href="./?a=currencies&b=delete&id='.$row[id].'&confirm=1" class="btn btn-success"><i class="fa fa-check"></i> Yes</a>&nbsp;&nbsp;
					<a href="./?a=currencies" class="btn btn-danger"><i class="fa fa-times"></i> No</a>';
            }
            ?>
        </div>
    </div>
<?php
} else { ?>
    <ol class="breadcrumb">
        <li><a href="./">CMS Administrator</a></li>
        <li class="active">Currencies</li>
    </ol>

    <div class="panel panel-default">
        <div class="panel-heading">
            Currencies
            <span class="pull-right">
			<a href="./?a=currencies&b=add"><i class="fa fa-plus"></i> Add currency</a>
		</span>
        </div>
        <div class="panel-body">
            <table class="table table-striped">
                <thead>
                <tr>
                    <th width="50%">Name</th>
                    <th width="30%">Value</th>
                    <th width="10%">Type</th>
                    <th width="10%">Action</th>
                </tr>
                </thead>
                <tbody>
                <?php
                $page = (int) (!isset($_GET["page"]) ? 1 : $_GET["page"]);
                $limit = 20;
                $startpoint = ($page * $limit) - $limit;
                if($page == 1) {
                    $i = 1;
                } else {
                    $i = $page * $limit;
                }
                $statement = "bit_currencies";
                $query = $db->query("SELECT * FROM {$statement} ORDER BY id LIMIT {$startpoint} , {$limit}");

                if($query->num_rows>0) {
                    while($row = $query->fetch_assoc()) {
                        ?>
                        <tr>
                            <td><?php echo $row['name']; ?></td>
                            <td><?php echo $row['value']; ?></td>
                            <td><?php echo $row['type']; ?></td>
                            <td>
                                <a href="./?a=currencies&b=edit&id=<?php echo $row['id']; ?>" title="Edit"><i class="fa fa-pencil"></i></a>
                                <a href="./?a=currencies&b=delete&id=<?php echo $row['id']; ?>" title="Delete"><i class="fa fa-times"></i></a>
                            </td>
                        </tr>
                        <?php
                    }
                } else {
                    echo '<tr><td colspan="4">Still no have currency.</td></tr>';
                }
                ?>
                </tbody>
            </table>
        </div>
    </div>
<?php } ?>




