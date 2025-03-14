pragma solidity ^0.8.0;
contract BugsABICoder2{
}
contract BugsABICoder1 is BugsABICoder2{
    constructor(){ }

    function()external { }
}
