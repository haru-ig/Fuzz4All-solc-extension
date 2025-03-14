pragma solidity ^0.8.0;
contract Test41 {
    constructor() payable {
        address[] memory p = new address[](5);
        p[0] = msg.sender;
        p[1] = msg.sender;
        emit aDeployed("");
    }
    event aDeployed(string msg);
    function getDeployed() public view returns (address[]) {
        return p;
    }
}

pragma solidity ^0.8.0;
contract Test40 {
    constructor() payable {
        address addr = address(1);
        address[90] memory p = new address[](91);
        p[0] = 88;
        p[1] = addr;
        p[2] = addr;
        p[3] = addr;
        p[4] = addr;
        p[5] = addr;
        p[6] = addr;
        p[7] = addr;
        p[8] = addr;
        p[90] = addr;
        emit aDeployed("");
    }
    address[] public p;
    event aDeployed(string msg);
}

pragma solidity ^0.8.0;
contract Test39 {
    constructor() payable {
        address addr = address(1);
        address[90] memory p = new address[](91);
        p[0] = msg.sender;
        p[1] = addr;
        p[2] = addr;
        p[3] = addr;
        p[4] = addr;
        p[5] = addr;
        p[6] = addr;
        p[7] = addr;
        p[8] = addr;
        p[90] = addr;
        p.return(abi.encodeWithSignature("sayThis()"));
    }
    address[] public p;
    function sayThis() public view returns (address) {
        require(true);
        return p[90];
    }
    event aDeployed(string msg);
}

pragma solidity ^0.8.0;
contract Test38 {
    constructor() payable {
        address addr = address(1);
        address[90] memory p = new address[](91);
        p[0] = msg.sender;
        p[1] = addr;
        p[2] = addr;
        p[3] = addr;
        p[4] = addr;
        p[5] = addr;
        p[6] = addr;
        p[7
