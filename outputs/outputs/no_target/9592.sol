pragma solidity ^0.8.0;
interface _Interface64_v0 {
    function isMutatedFoo3(bytes memory _data)  external;
}
interface _Interface64_v1 {
    function isMutatedFoo4(string memory _data)  external;
}
interface _Interface64_v2 {
    function isMutatedFoo5(bytes memory _data)  external;
}
contract Impl64Test is Interface64_v0, Interface64_v1, Interface64_v2 {

    function mutatedFoo3(bytes memory _data)  public pure returns (bool) {  return _Interface64_v0(address(this)).isMutatedFoo3 (_data)!= 0; }
    function mutatedFoo4(string memory _data)  public pure returns (bool) {  return _Interface64_v1(address(this)).isMutatedFoo4 (_data)!= 0; }
    function mutatedFoo5(bytes memory _data)  public pure returns (bool) {  return _Interface64_v2(address(this)).isMutatedFoo5 (_data)!= 0; }
    function foo3(bytes memory _data)  public {  }
    function foo4(string memory _data)  public {  }
    function foo5(bytes memory _data)  public {  }
}
