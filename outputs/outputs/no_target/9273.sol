pragma solidity ^0.8.0;
contract semanticEquiv2{
}
contract semanticallyEquiv3{
}
contract semanticallyEquiv2{
    function() payable public{
    }
}


contract semanticEquiv2{
    function() public{
    }
    receive(){
    }
    modifier(){
    }
    fixed function f() public pure payable{}
}
