pragma solidity ^0.8.0;
contract BugsABICoder2{
  uint8 public state=1;
  function setState(uint8 state_) public returns (uint8) {
    state=state_;
    return state;
  }
  function getState() public view returns (uint8) {
    return state;
  }
}
contract BugsABICoder {
}
contract Bugs1 is BugsABICoder2{
    BugsABICoder2 ABICoder=new BugsABICoder2(address(0));
    function useNew(uint8 r, string memory t, Bugs1 bugy) public returns (uint8) {
        return checkUint8_ (r);
    }
    function useOld(uint8 r, string memory t, BugsABICoderABI coder) public returns (uint8) {
        return checkUint8_ (r);
    }
    uint8 public myUint8;
    uint uint8_ = 11;

    function checkUint8_ (uint8 r) public returns (uint8) {
        return r;
    }

    function checkNew (uint8 r) public returns (uint8) {
        return r << 1;
    }
    function doCall(bytes memory r) public returns (uint8) {

      return checkInt8_ (abi.decode (r, (int8)));
    }
    function doCall2(bytes memory r) public returns (uint8) {

      return checkInt8_ (abi.decodePacked (r));
    }

    function checkInt8_ (int8 r) public returns (uint8) {

      require(uint8_(r).eq(uint8_));
      uint8_.eq(uint8_.add(1));
      return uint8_;
    }
}

contract Bugs2 is BugsABICoder{
    BugsABICoder coder=new BugsABICoder (address(0
