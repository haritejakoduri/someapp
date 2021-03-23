{include file="components/header.tpl"}
<div class="container row">
    <div class="col-3">
        <div class="container">

            <div class="container-fluid">
            <div class="container-fluid">
                
            </div>
             {$a = ['a','b','c','d']}
            {foreach $a as $i=>$date}
                <div class="form-check">
              <label class="form-check-label">
                <input type="checkbox" class="form-check-input" name="" id="" value={$date} checked>
                {$date}
              </label>
            </div>
            {/foreach}
            </div>
           
            
        </div>
    </div>
    <div class="col-9">
       <div class="form-group">
         <input type="text" class="form-control" name="search" id="" aria-describedby="helpId" placeholder="">
       </div>
    </div>
</div>
{include file="components/footer.tpl"}