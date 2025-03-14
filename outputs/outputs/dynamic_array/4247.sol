pragma solidity ^0.8.0;
contract G {
    address[] x = [address(0), address(0), address(0)];
    constructor(address[3] memory) public {
        return;
    }
    function f() public {
        x.push(0x1);
    }
}

pragma solidity ^0.8.0;
contract G {
    constructor(address[1000] memory) public {
        address[] memory memArray;
        address(memArray).value{100000 ether}(0);
    }
}
