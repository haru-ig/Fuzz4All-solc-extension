pragma solidity ^0.8.0;
contract Solidity {

    uint public i;

    constructor () public {
        i = myConst;
    }

    function setI(uint newI) public {
        i = newI;
    }

    mapping(uint => uint) private _nextNumber;

    function nextNumber() public view returns (uint) {
        uint count = _nextNumber[mynum] + 1;
        uint next = count * totalSupply();
        _nextNumber[mynum] = count;
        emit Next(mynum, count, next);
        return next;
    }
    uint public mynum;
    uint public totalSupply;
}


pragma solidity ^0.8.0;
contract Solidity {
    mapping(uint => uint) private _numbers;

    function nextNum() public view returns (uint) {
        uint count = _numbers[mynum] + 1;
        uint n = count * totalSupply();
        mynum++;
        return n;
    }
}
