pragma solidity ^0.8.0;
contract FirstCaller {
    function doAll() public payable {
        BogusCaller c = new BogusCaller();
        c.send{value:1 ether}();
    }
}

contract FallbackCaller {
    function doOne() public pure {
        BogusCaller c = new BogusCaller();
        c.send(fallback:address(c));
    }
}
contract SecondCaller {
    function doAll() public pure {
        FallbackCaller c = new FallbackCaller();
        c.doOne();
    }
}

contract ThirdCaller {
    bytes memory public message;

    function doAll() public pure {
        FallbackCaller c = new FallbackCaller();
        c.doOne;
        c.doOne{value:1 ether}(fallback:address(c));
    }

    receive() external {
        message = 'fallback';
    }
}
