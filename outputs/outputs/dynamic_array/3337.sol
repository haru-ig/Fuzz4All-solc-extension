pragma solidity ^0.8.0;
interface I1 {
    function use(uint256 key, uint8[] memory) external;
}
contract C1a is I1  {
    function use2(uint256 key, uint8[] memory l) external  {
        l[0] = 0;
    }
}
contract C1b is I1 {
    function use2(uint256 key, uint8[] memory slice) external  {
      l[0] = 0
    }
}
contract C2 {
    I1 public i1;
    function run() public {
        C1a objC1a = new C1a();


        C1b objC1b = new C1b();
        uint256 sizeC1;
        objC1b.use(0, new uint8[](1));
        uint8 j = 0;
        objC1b.use(0, new uint8[](1));
        objC1b.use2(0, slice);
        sizeC1 = 1;
        I1(msg.sender).use(0, slice);

    }
}
pragma solidity ^0.8.0;
contract C2Error{
    error err2;

    function use(uint256 key, uint8[] memory slice) public view returns (uint256 sizeC1){
        (sizeC1, err2) = getStorage();
    }

    function getStorage() public view returns(uint256 x, error err){
        return (255, err2);
    }
}
