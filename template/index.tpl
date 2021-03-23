{include file="components/header.tpl"}
<link rel="stylesheet" href="/css/index.css">
</head>
<body>
{include file="components/navbar.tpl"}
<div class="container row">
    <div class="col-3">
        <div class="container sticky-item">
            <!--upcoming auctions-->
            <div class="container-fluid card upcoming-auctions-div">
                <div class="upcoming-auctions">
                    <h5>upcoming autions</h5>
                </div>
                <div class="upcoming-auctions back-weat">
                    <h6><b><i>Store return</i></b> autions</h6>
                </div>
                <div class="upcoming-auction-input">
                    {$a = ['All Auctions','march-10,2021','march-20,2021','march-30,2021']}
                    {foreach $a as $i=>$date}
                        <div class="form-check ">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" name="check_upcoming" id="" value={$date}>
                            {$date}
                        </label>
                        </div>
                    {/foreach}
                </div>
                <div class="upcoming-auctions back-weat">
                    <h6><b><i>Whole sale</i></b> pallet aution</h6>
                </div>
                <div class="upcoming-auction-input">
                    {$b = ['All Auctions','march-10,2021','march-20,2021','march-30,2021']}
                    {foreach $b as $i=>$date}
                        <div class="form-check ">
                        <label class="form-check-label">
                            <input type="checkbox" class="form-check-input" name="check_upcoming" id="" value={$date}>
                            {$date}
                        </label>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
    <div class="col-9">
       <div class="form-group">
         <input type="text" class="form-control" name="search" id="" aria-describedby="helpId" placeholder="">
            {$products = [
                [autionId=>12,imgurl=>'https://dummyimage.com/600x400/000/fff',title=>"car",condition=>"relatively new",location=>"US,san fransisco",currentPrice=>300,retrevalOption=>'Local pickup',time=>"10:10:10"],
                [autionId=>13,imgurl=>'https://dummyimage.com/600x400/ae9dbe/000',title=>"bike",condition=>"relatively new",location=>"US,san fransisco",currentPrice=>300,retrevalOption=>'Local pickup',time=>"10:10:10"],
                [autionId=>14,imgurl=>'https://dummyimage.com/600x400/30bb59/fff',title=>"bicycle",condition=>"relatively new",location=>"US,san fransisco",currentPrice=>300,retrevalOption=>'Local pickup',time=>"10:10:10"],
                [autionId=>15,imgurl=>'https://dummyimage.com/600x400/bb30a4/fff',title=>"gold iphone",condition=>"relatively new",location=>"US,san fransisco",currentPrice=>300,retrevalOption=>'Local pickup',time=>"10:10:10"],
            ]}
            <div style="height: 30px;width: 100%;"></div>
            {foreach $products as $i=>$product}
            <div class="fluid-container card product">
                <div class="row">
                    <div class="col-5">
                        <img src="{$product.imgurl}" alt="{$product.title}" srcset="" class="image">
                        <p class="align-center-text"><b>Auction Id:</b>{$product.autionId}</p>
                    </div>
                    <div class="col-7">
                        <br>
                        <h3>{$product.title}</h3>
                        <div class="row">
                            <div class="col-4">
                                <br/>
                                <p><b>Condition:</b><br>{$product.condition}</p>
                                <p><b>Location:</b><br>{$product.location}</p>
                            </div>
                            <div class="col-4">
                                <br/>
                                <p><b>Current Price:</b><br>{$product.currentPrice}</p>
                                <p><b>Retreval option:</b><br>{$product.retrevalOption}</p>
                            </div>
                            <div class="col-4">
                                <br><p><b>{$product.time}</b></p><br>
                                <button class="btn btn-primary">Add WatchList</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            {/foreach}
        </div>
    </div>
</div>
{include file="components/footer.tpl"}