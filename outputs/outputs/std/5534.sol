pragma solidity ^0.8.0;
contract Mutate24{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;
    }
    function test(address ad, address ed) public {
        return;
    }
}

pragma solidity ^0.8.0;
contract Mutate25{
    address ad;
    address ed;
    constructor(address ad, address ed) {
        ad = ad;
        ed = ed;

        ad = 0xf00d158aeff8471c626e7e825b21ac84ce58be2a430132835f274212409382c;
        ed = 0x58f30ed85ba354a0552800fb6d2f36c76d07757a1c5da54a03065b634b484cf4;
    }
    function test(address ad, address ed) public {
        return;
    }

    receive() external payable {
    }
}
