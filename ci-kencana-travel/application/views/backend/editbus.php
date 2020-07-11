<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo $title ?></title>
    <!-- css -->
    <link rel="stylesheet" href="<?php echo base_url('assets/frontend/timepicker') ?>/css/bootstrap-material-datetimepicker.css" />
    <?php $this->load->view('backend/include/base_css'); ?>
  </head>
  <body id="page-top">
    <!-- navbar -->
    <?php $this->load->view('backend/include/base_nav'); ?>
    <!-- Begin Page Content -->
    <div class="container-fluid">
      <!-- Page Heading -->
      <!-- Basic Card Example -->
      <div class="card shadow mb-4">
        <div class="card-header py-3">
          <h6 class="m-0 font-weight-bold text-primary">Edit Bus</h6>
        </div>
		<div class="modal-body">
			<form action="<?php echo base_url('bus/editbus') ?>" method="post" enctype="multipart/form-data">
				<div class="card-body">
					<div class="row">
						<div class="col-sm-14">
							<div class="row form-group">
									<label for="nama" class="control-label">Kode Bus</label>
									<input type="text" class="form-control" name="nama" value="<?php echo $bus['kd_bus']?>" >
									<input type="hidden" name="kode" value="<?php echo $bus['kd_bus']?>">
							</div>
							<div class="row form-group">
									<label for="nama" class="control-label">Nama Bus</label>
									<input type="text" class="form-control" name="nama" value="<?php echo $bus['nama_bus']?>" >
									<input type="hidden" name="kode" value="<?php echo $bus['kd_bus']?>">
							</div>
							<div class="row form-group">
									<label for="nama" class="control-label">Plat No. Bus</label>
									<input type="text" class="form-control" name="plat" value="<?php echo $bus['plat_bus']?>" >
							</div>
							<div class="row form-group">
									<label for="nama" class="control-label">Kapasitas Travel</label>
									<input type="email" class="form-control" name="email" value="<?php echo $bus['kapasitas_bus']?>" >
							</div>
							<div class="row form-group">
									<label for="nama" class="control-label">Status</label>
									<input type="text" class="form-control" name="hp" value="<?php echo $bus['status_bus']?>" >
									<?php if ($bus['status_bus'] == '1') { ?>
									<td class="btn-success"> Online</td> 
									<?php } else { ?>
									<td class="btn-danger">Offline</td>
									<?php } ?></b></p>
							</div>
							<div class="row form-group">
									<label for="nama" class="control-label">Keterangan</label>
									<input type="text" class="form-control" name="alamat" value="<?php echo $bus['desc_bus']?>" >
							</div>
						</div>
					</div>
				</div>
			  </div>		
              <a class="btn btn-default" href="javascript:history.back()"> Kembali</a>
              <input  type="submit" class="btn btn-primary pull-rigth" value="Edit">
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- End of Main Content -->
    <!-- The Modal -->
    <!-- Footer -->
    <?php $this->load->view('backend/include/base_footer'); ?>
    <!-- End of Footer -->
    <!-- js -->
        <?php $this->load->view('backend/include/base_js'); ?>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/ripples.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-material-design/0.5.10/js/material.min.js"></script>
        <script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.min.js"></script>
        <script type="text/javascript" src="<?php echo base_url('assets/frontend/timepicker') ?>/js/bootstrap-material-datetimepicker.js"></script>
        <script type="text/javascript">
          $(document).ready(function()
          {
            $('#time').bootstrapMaterialDatePicker
            ({
              date: false,
              shortTime: false,
              format: 'HH:mm'
            });
          })
        </script>
        <script type="text/javascript">
          $(document).ready(function()
          {
            $('#time2').bootstrapMaterialDatePicker
            ({
              date: false,
              shortTime: false,
              format: 'HH:mm'
            });
          })
        </script>

      </body>
    </html>