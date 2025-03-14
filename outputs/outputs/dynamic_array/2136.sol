pragma solidity ^0.8.0;
interface TestInterface{
    function set(uint256[2] memory a) external returns (uint256);
}
contract FunctionalEquivalence_NestedDynamicallySizedAssignments_5{
    function test(address addr) public {
        TestInterface test = TestInterface(addr);
        uint256[2] memory testArray = test.set(uint256[2](4, 5));
        functionalEquivalence__NestedDynamicallySizedAssignments_5_Check(testArray,0,0,0);
        testArray[1] = 999;
        functionalEquivalence__NestedDynamicallySizedAssignments_5_Check(testArray,0,999,0);
    }
    function functionalEquivalence__NewMethod_5_Check(uint256[] memory a, uint256[] memory b) public returns(uint256,uint256) {
        uint256 m = a.length;
        uint256 n = b.length;
        uint256 r = 0;
        while (a.length > b.length) {
            a.push(0);
        }
        while (b.length > a.length) {
            b.push(0);
        }
        for(uint256 i = 0; i < m; i++){
            while (b.length > a.length) {
                b.push(0);
            }
            r += a[i];
            r = r >> 256 | r << 127;
            r = r >> 8 | r << 248;
            r = r >> 8 | r << 144;
            r = r >> 16 | r << 16;
            r = r >> 8 | r << 24;
        }
        return (r >> 127 & 0xffffffff, r >> 8 & 0xffffff);
    }
    function functionalEquivalence__NestedDynamicallySizedAssignments_5_Check(uint25
