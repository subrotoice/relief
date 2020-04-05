<?php include('header.php'); ?>

    <section class="inputform">
      <div class="container">
      <div class="row">
      <div class="col-md-6">
      <form class="serviceEntry inputForm">
        <div class="form-group">
          <label for="NID">NID</label>
          <input type="number" name="nid" class="form-control" id="nid" aria-describedby="emailHelp" placeholder="Enter NID">
          <small id="emailHelp" class="form-text text-muted">Enter 10 / 17 digit NID</small>
        </div>
        <div class="form-group">
          <label for="mobile">Mobile</label>
          <input type="number" name="mobile" class="form-control" id="mobile" aria-describedby="emailHelp" placeholder="Enter Mobile No.">
          <small id="emailHelp" class="form-text text-muted">Enter 12 digit</small>
        </div>
        <div class="form-group">
          <label for="fullName">Full Name</label>
          <input type="text" name="fullName" class="form-control" id="fullName" aria-describedby="emailHelp" placeholder="Enter Full Name" autocomplete="off">
        </div>



        <div class="form-group">
          <label for="typeInputEmail1">Union</label>
          <select name="unionp" class="custom-select mr-sm-2" id="sel_depart" >
            <option value="">--ইউনিয়ন পরিষদ--</option>
            <?php 
              require_once('config.php');
              // Check if exit
              $sql = "SELECT * FROM unionpori";
              $q = $pdo->query($sql);
              $q->setFetchMode(PDO::FETCH_ASSOC);
              var_dump($row);
              while($row = $q->fetch() ){
                  
                    $union_id = $row['id'];
                    $union_name = $row['union_name'];
                    
                    // Option
                    echo "<option value='".$union_id."' >".$union_name."</option>";
                }

              ?>
          </select>
        </div>
        <div class="form-group">
          <div class="peasthere"></div>
        </div>
      </div>
      <div class="col-md-6">

      <div class="form-group">
          <label for="typeInputEmail1">Service Type</label>
          <select name="serviceType" class="custom-select mr-sm-2" id="inlineFormCustomSelect" required>
            <option value="Corona Relief">Corona Relief</option>
            <option value="Tin">Tin</option>
            <option value="Solar">Solar</option>
            <option value="VGF">VGF</option>
            <option value="Blanket">Blanket</option>
          </select>
        </div>
        <div class="form-group">
          <label for="yearInputEmail1">অর্থ বছর:</label>
          <select name="serviceFCYear" class="custom-select mr-sm-2" id="inlineFormCustomSelect" required>
            <option value="2019-2020">2019-2020</option>
            <option value="2018-2019">2018-2019</option>
            <option value="2017-2018">2017-2018</option>
          </select>
        </div>
        <div class="form-group text-right">
          <button type="submit" class="btn btn-primary">Save</button>
        </div>
      </form>

      <div class="serviceDetails"></div>
      </div>
      </div>
      
      </div>
    </section>

    <?php include('footer.php'); ?>
