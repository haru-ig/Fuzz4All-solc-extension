pragma solidity ^0.8.0;

import "./I.sol";

contract M {
    address payable owner;
    address payable addr1;
    address payable addr2;
    address payable addr3;

    constructor () {
        owner = msg.sender;
    }

    function use(string memory key, bytes4 functionSelector) external {
        addr1.sendValue(21212121212);
        addr2.sendValue(987654321);
        addr3.sendValue(89473390);

        I(addr1).use(key, functionSelector);
        I(addr2).use(key, functionSelector);
        I(addr3).use(key, functionSelector);

        uint gasPrice = msg.value / 6;
        uint gaslimit = gasprice * 200;

        for (uint i = 0; i < 10; i = i + 1) {
            addr1.sendValue(gasPrice);
            addr2.sendValue(gasPrice * 2);
            addr3.sendValue(gasPrice * 6);
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

import "./I.sol";

contract A1 {
    struct P {
        uint num;
       P next;
    }
    P[] myData;

    function () external payable {
        myData.push(P(11, myData[0].next));
    }

    function newContract() external payable {
        I(address(this)).use("hello", abi.encodeWithSelector(I.use.selector));
    }
}
