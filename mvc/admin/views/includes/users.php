<div class="row">
    <div class="col-md-12">
        <!-- DATA TABLE -->
        <!-- <h2 class="title-1 m-b-35"><b>USERS</b></h2> -->
    </div>
</div>
<div class="row">
<div class="col-12">
<h4 class="m-b-35">TOP 10 USERS WITH THE MOST MONEY</h4>
        <div class="au-card au-card--bg-blue au-card-top-countries m-b-30">
            <div class="au-card-inner">
                <div class="table-responsive table-responsive-user">
                    <table class="table table-top-countries">
                        <tbody>
                        <?php $mang = json_decode($data["result"]);
                        foreach($mang as $m){
                        ?>
                            <tr>
                                <td><?php echo $m->fullName ?></td>
                                <td class="text-right"><?php echo $m->wallet ?></td>
                            </tr>
                            <?php } ?> 
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="col-12">
    <h4 class="m-b-35">LIST ALL USERS</h4>
        <div class="table-responsive table--no-card m-b-30">
            <table class="table table-borderless table-striped table-earning flexy">
                <thead>
                    <tr>
                        <th>name</th>
                        <th>phone</th>
                        <th>email</th>
                        <th>address</th>
                        <th>wallet</th>
                    </tr>
                </thead>
                <tbody>
                <?php $mang = json_decode($data["us"]);
                foreach($mang as $m){
                ?>
                    <tr>
                        <td><?php echo $m->fullName ?></td>
                        <td><?php echo $m->phone ?></td>
                        <td><?php echo $m->email ?></td>
                        <td><?php echo $m->address ?></td>
                        <td><?php echo $m->wallet ?></td>
                    </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
    
</div>