pragma solidity ^0.8.0;
contract Mutate3 {
    uint256 initialBalance = 4200000000;
    mapping(address => uint256) public totalSupply;
    function main() public {
        mutator3();
    }
    function mutator3() public {
        initialBalance = initialBalance + 1;
        totalSupply.add(1);
    }
}

pragma solidity ^0.8.0;
contract Mutate4 {
    uint256 initialBalance = 4200000000;
    mapping(address => uint256) public totalSupply;
    function main() public {
        mutator4();
    }
    function mutator4() public {
        initialBalance = initialBalance + 10;
        initialBalance = initialBalance + 100;
        initialBalance = initialBalance + 1000;
        totalSupply.add(10);
        totalSupply.add(100);
        totalSupply.add(1000);
    }
}

pragma solidity ^0.8.0;
contract Mutate5 {
    uint256 initialBalance = 4200000000;
    mapping(address => uint256) public totalSupply;
    function main() public {
        mutator5();
    }
    function mutator5() public {
        initialBalance = initialBalance + 10;
        address[] storage badAddress = new address[](1);
        badAddress[0] = 1;
        initialBalance = initialBalance + badAddress.length;
    }
}

pragma solidity ^0.8.0;
contract Mutate6 {
    uint256 initialBalance = 4200000000;
    mapping(address => uint256) public totalSupply;
    address[] storage addresses = new address[](3);
    function main() public {
        mutator6();
    }
    function mutator6() public {
        initialBalance = initialBalance + 10;
        addresses[0] = msg.sender;
        addresses[1] = addresses[0];
        addresses[2] = addresses[0];
    }
}

pragma solidity ^0.8.0;
contract Mutate7 {
    uint256 public immutable totalAmount = 5;
    uint256 public amountDeleted;
    uint256[] public numbersToKeep;

    function main() public {
        mutator7();
    }

    function mutator7() public {
        amountDeleted = 0
