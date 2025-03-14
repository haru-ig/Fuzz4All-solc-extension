pragma solidity ^0.8.0;
interface IToken { function testContract() external view; }

interface IBirdFactory{
    function produceBird(uint256 )external returns (iBird);
}

contract Pip {
    IBirdFactory birdFact;

    constructor(IBirdFactory _birdFact) public{
        birdFact = _birdFact;
    }

    function produceBird1 (uint256 t) public returns (iBird){
        return birdFact.produceBird(t);
    }
}

contract Pip1{
    IBirdFactory birdFact;
    constructor(IBirdFactory _birdFact) public{
        birdFact = _birdFact;
    }

    function produceBird2(uint256 _t) public returns (iBird memory){
        return birdFact.produceBird(_t);
    }
}

contract Pip2{

    constructor(IBirdFactory _birdFact) public{
        birdFact = _birdFact;
    }

    function produceBird3(uint256 _t) public returns (iBird memory){
        return birdFact.produceBird(_t);
    }

    function produceBird4(bool _t) public returns (iBird memory){
        if(_t)
            return birdFact.produceBird(1);
        else
            return birdFact.produceBird(2);
    }
}

contract Pip3{
    address payable _payableAddress;

    constructor(address payable _payableAddress) public{
        _payableAddress = _payableAddress;
    }

    function produceBird5() public returns (iBird memory){
        return _payableAddress.send(1);
    }
}
