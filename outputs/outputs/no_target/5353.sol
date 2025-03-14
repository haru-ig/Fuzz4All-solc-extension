pragma solidity ^0.8.0;
contract ABIv2 {
    function returnData() public view returns(uint x) {x = 1;}
    function returnData2() public public view returns(uint x) {x = 1;}
    function returnData3() public public view returns(uint x) {x = 1;}
    function returnData4() public(uint y) public view returns(uint x) {x = 1;}
    function returnData5() public view returns(uint x) public {x = 2;}
    function returnData6() public view returns(uint x) not payable {x = 2;}
    function returnData7() public view returns(uint x) public pure {x = 2;}
}
