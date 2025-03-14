pragma solidity ^0.8.0;
contract six {
    function one() public pure {
    }
    function two() public pure returns(uint256) {
    }
    function three() public pure {
        two();
    }
    function four() public pure {
        three();
    }
    function five() public pure {
        four();
    }
    function six() public pure {
        five();
    }
    function seven() public pure {
        six();
    }
    function eight() public pure {
    }
}

pragma solidity ^0.8.0;
contract two {
    function zero() public {
        six fiveTwoOne_ = six(.one);
        six seven_ = six(.one);
        seven sixTwo_.one().zero(one => {
            a = 1;
        });
    }
    function one() public pure {
    }
    function two() public pure returns(uint256) {
    }
    function three() public pure {
        two();
    }
    function four() public pure {
        three();
    }
    function five() public pure {
        four();
    }
    function six() public pure {
        five();
    }
    function seven() public pure {
        six();
    }
    function eight() public pure {
    }
}
