pragma solidity ^0.8.0;
contract semanticallyEquiv9{
}
contract semanticallyEquiv10{
}
contract non-semanticallyEquiv {
    address public constant _contractAddress = address(this);
    function test() view returns(uint) public pure{
        return _contractAddress.balance;
    }
}
contract non-semanticallyEquiv10 {
    address public constant _contractAddress = address(this);
    function test() view returns(uint) public pure{
        return _contractAddress.balance;
    }

    function test1() view returns(uint) public pure{
        return _contractAddress.balance;
    }
}
