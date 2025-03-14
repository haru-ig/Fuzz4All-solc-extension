pragma solidity ^0.8.0;
contract Mutate{

    address public owner;


    uint public minInt;


    uint public maxInt;


    constructor(uint _minInt, uint _maxInt){

        minInt = _minInt;


        owner = msg.sender;


        maxInt = _maxInt;
    }



    function setMaximumInt(uint _maxInt)
        public
        {
            require(msg.sender==owner,"Only owner can change");
            maxInt=_maxInt;
        }

    function setMinimumInt(uint _minInt)
        public
        {
            require(msg.sender==owner,"Only owner can change");
            minInt=_minInt;
        }


    function returnMyInt()
        public
        view
        returns(uint){
        return myInt;
    }


    function setMyInt()
        public{
        myInt = msg.value;
    }


    function sum()
        public
        view
        returns(uint){
        uint sum=0;
        for(uint index=0;index<=myInt;index++){
            sum+=index;
        }
        return sum;
    }
    function mul(uint lhsValue,uint rhsValue)
        public
        pure
        returns(uint){
        return lhsValue*rhsValue;
    }
}
