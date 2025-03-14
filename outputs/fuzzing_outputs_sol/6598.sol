pragma solidity ^0.8.0;
contract FallbackRevert {
    function fallback() public payable {
        revert();
    }
}

contract Fallback {
    function() external payable {}
}
contract Caller {
    function fallback() payable {}
}


contract FallbackPayable {
    bool ok;

    function payable fallback() public payable {
        ok = true;
    }

    function noPayable() public {
        ok = true;
    }

    function payable noFallback() public {
        ok = true;
    }

    function testPayability() public view returns (bool) {
        return ok;
    }

    function testUnpayability() public returns (bool) {
        Fallback fallbackImpl = FallbackImpl();
        fallbackImpl.noFallback();
        return ok;
    }
}

contract RevertCall {
    fallback () external {
        revert();
    }
}
contract RevertCallWithEther {
    bool ok;

    function withEtherFallback() public payable {
        ok = true;
    }

    function noWithEtherFallback() public {
        ok = true;
    }

    function withEtherRevert() external {
        revert();
    }

    function withoutWithEtherRevert() external {
        ok = true;
    }

    function testWithEtherability() public view returns (bool) {
        return ok;
    }

}
