pragma solidity ^0.8.0;
contract Mutate12 is Mutate11 {
    function main5() public {
        delete Array.findMin(int32[10]);
    }
    function main6() public {
        delete Array.findMax(uint8[10]);
    }
    function main7() public {
        delete Array.sum(uint28[10]);
    }
    function main8() public {
        delete Array.get(address[](10), 0);
    }
    function main9() public {
        delete Array.get(address[](10), 1);
    }
    function main10() public {
        delete Array.set(int32(10), int32(0), int32(0));
    }
}
contract Mutate5 {
    function main0() public {
        uint16[] memory arr1;
        uint16[] memory arr2;
        for (uint16 i; i < arr1.length; i++) {
          uint16 temp1 = 0;
          uint16 temp2 = 0;
          while (i!= arr1.length) {
            temp1 = (temp1 << 1) + arr1[i];
            arr2.push(arr2);
            i = i + 1;
          }
        }
        for (uint16 i; i < arr2.length; i++) {
          uint16 temp1 = 0;
          uint16 temp2 = 0;
          while (i!= arr2.length) {
            temp2 = (temp2 << 1) + arr2[i];
            i = i + 1;
          }
        }
    }
    function main1() public {
      array[256] memory arr3;
    }
    function main2() public {
      mapping(int128 => uint) memory _mem3;
    }
    struct test {
        uint a
