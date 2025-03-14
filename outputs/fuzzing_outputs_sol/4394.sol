pragma solidity ^0.8.0;
contract Test {
    address payABLE constant pay = payable(0x8D8D2654157061B4321e7F69931D92a2A6A897e5);

    function test() public returns (uint256){
        call(payable(0xEED1ABA42579AC9523842D7B5FA19054890436F0));
        return 23;
    }

    function call(address self) public {

        (bool success, ) = self.call{ value: Ether(100) }("");

        (bool success, ) = self.emit(string(abi.encodePacked("E", "E")));
        (,uint256 returnCode, ) = self.call(uint256(this));
        uint256 _ = 0;
        (,uint256 returnCode2, ) = self.call{ gas : 100, value : 100 }((address self)(_));
        uint256 _2 = 0;
        (,uint256 returnCode3, ) = self.call{ gas : 100 }((address self)(_2));
        uint256 _3 = 0;
        (,uint256 returnCode4, ) = self.call{ gas : 100, value : 200 }((address self)(_3));
        uint256 _4 = 0;
        (,uint256 returnCode5, ) = self.call{ gas : 220, value : 200 }((address self)(_4));
        uint256 _5 = 0;
        (,uint256 returnCode6, ) = self.call{ gas : 220, value : 200 }((address self)(_5));
        uint256 _6 = 0;
        (,uint256 returnCode7, ) = self.call{ gas : 220, value : 200 }((address self)(_6));
    }
}

contract TwoFallback {
    address payABLE constant pay = payable(0x8D8D2654157061B4321e7F69931D92a2A6A897e5);

    fallback() external payable {

        pay();

    }

    receive() public payable {}
    function test() public returns (uint256){
        test2();
