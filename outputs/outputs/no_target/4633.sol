pragma solidity ^0.8.0;
contract B {
    modifier mmodifier {
        revert();
        mmodifier;
    }
    function m() public  mmodifier{
        m();
        revert();
    }
}
