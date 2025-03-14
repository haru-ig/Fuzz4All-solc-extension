pragma solidity ^0.8.0;
contract L24{
    constructor() public payable {

    }
    function modifyCalled() public {}
}


pragma solidity ^0.8.0;
contract L24{
    constructor() public payable {

    }
    function modifyCalled() public {
        L24(0x123).modifyCalled();
    }
}
