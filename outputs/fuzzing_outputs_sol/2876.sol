pragma solidity ^0.8.0;
contract CallerOne {
    function () external payable {

    }
}

pragma solidity ^0.8.0;
contract CallerTwo {
    receive () external payable {

    }
}


pragma solidity ^0.8.0;
contract CallContract {
    function test() public {

        CallerOne(0x0).test();
    }
}
