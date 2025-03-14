pragma solidity ^0.8.0;
contract FallbackMutator {
    bytes public returnData;
    function shouldBe(bytes calldata _) public {
        returnData =_;
    }
    function shouldBe(bytes memory _) public {
        returnData =_;
    }
    function shouldBe(address caller_) public returns (address) {
        return data;
    }
    function shouldBe(address caller_, uint _counter_) public returns (address) {
        return dataAddress;
    }
    function shouldBe(address caller_, uint _counter_, bytes calldata data_) public returns (address) {
        returnData =_;
        return caller_.value((address(this).balance) + 1)();
    }
    function shouldBe(address caller_, uint _counter_, bytes memory data_) public returns (address) {
        returnData =_;
        return caller_.value((address(this).balance) + 1)();
    }
    function shouldBe(address caller_, uint _counter_, address data_) public returns (address) {
        returnData =_;
        return caller_.value((address(this).balance) + 1)();
    }
    function shouldBe(address caller_, uint _counter_, address data_, uint _value_) public returns (address) {
        returnData =_;
        return caller_.value((address(this).balance) + 1)();
    }
}
