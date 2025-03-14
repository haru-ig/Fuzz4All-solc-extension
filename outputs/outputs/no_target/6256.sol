pragma solidity ^0.8.0;
contract MyContract {
    event Log(address _addr, bytes32 _data);
    function method() public {
        emit Log(tx.origin, method());
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    MyContract myContract = new MyContract();
    event Log(address _addr, bytes32 _data);
    function method() public {
        emit Log(myContract.myContract.myContract.myContract.myContract.myContract.myContract.myContract.myContract.myContract.myContract, method());
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    assembly {
        let addr := sub(1000000, calldataload(0))
        let amount := 1000000
        let data := 0
        let dataSlice := mload(add(data, 0x20))
        mstore(0x700, dataSlice)

        sub(1000000, 700)
        sub(1000000, 88888888)
        sub(amount, 626789)
        sub(add(amount, 1), add(amount, 20000))
        sub(amount, 4500000000)
        sub(amount, 133)
    }
}

pragma solidity ^0.8.0;
contract MyContract {
    address public myContract;
    event Log(uint256 amount, bool signed, bytes32 _data);
    modifier hasFunds() {
        require(address(this).balance >= 1000000000, "You can't pay for ETH anymore!");
        _;
    }
    modifier callsMyContract() {
        require(myContract.balance >= 1000000, "My contract insufficent funds!");
        _;
    }
    constructor() public {
        myContract = msg.sender;
    }
    function method() public {
        uint256 ethValue = 100000000;
        uint256 uintValue = 1;
        uint256 signedValue = 1;
        uint256 emptyAmount = 0;
        bytes32 emptyString = 0;
        bool emptyBool = false;
        bytes32 myData
