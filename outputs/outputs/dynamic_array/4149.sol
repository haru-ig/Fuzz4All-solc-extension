pragma solidity ^0.8.0;
contract C {
    uint256 D;
    uint c = 0;
    function f() public {
        uint[2] memory x;
        uint256 x1 = 1;
        D = 2;
        for (uint256 i = 1; i < 8; i++) {
            x[i] = x1;
            D = 2;
            x1 += 1;
            D += 1;
            c++;
        }
        c++;
        x[0] = x[1];
        D += 1;
        c++;
    }
}



pragma solidity ^0.8.0;


interface ICalls {

    function currentFunction() external returns (address);
}



pragma solidity ^0.8.0;


interface IFeeder {
    function feed(address _to, uint256 _amount) external;
}






















pragma solidity ^0.8.0;






contract FeederCalldata1 {
    function pay(address payable _to, uint256 _amount) public {
        _to.transfer(_amount);
    }
}























pragma solidity ^0.8.0;




contract DeployedFeeder {
    IFeeder public feeder;

    constructor() {
        feeder = new FeederCalldata1();
    }
    function deploy() public {
        feeder = new FeederCalldata1();
    }
}































pragma solidity ^0.8.0;






contract MyFeeder is DeployedFeeder {

    string public feederAddress;

    constructor() {
        feederAddress = address(new DeployedFeeder());
    }


    /** @dev Feed a specific address, with 5% of the contract
