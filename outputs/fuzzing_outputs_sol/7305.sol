pragma solidity ^0.8.0;
contract FallbackFunctionDemo {}

contract Contract1 is FallbackFunctionDemo {
    function doFunction(address to, uint amount) public {
        LowLevelContract lc = LowLevelContract(to);
        lc.doLowLevelCall(amount, address(this), "");
    }
}

contract Contract2 {
    function doFunction(address to) public payable {}
}



pragma solidity 0.8.0;

contract Contract3 {
    bytes[] memory public data;

    function Call0() public view {
        Contract1 c1;
        c1.doFunction(address(0), 1);
    }

    function Call1() public view {
        Contract1 c1;
        bytes memory data1 = "some data";
        c1.doFunction(address(0), 1, data1);
    }

    function Call2() public view {
        Contract1 c1;
        Contract2 c2;
        bytes memory data2 = "some data";
        c1.doFunction(address(c2));
    }

    function Call3() public view {
        Contract1 c1;
        bytes[] memory data3 = ["some data 1", "some data 2"];

        c1.doFunction(address(this), 0, data3);
    }

}
