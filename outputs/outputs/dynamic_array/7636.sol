pragma solidity ^0.8.0;
contract Test15_semanticallyEquivalent_7{
            uint A;
            function a() public{
                A = 2;
            }
            function modify() public {
                A = 5;
                A = A + 1;
                A = A + 1;
            }
            function a_read() public view returns(uint){
                return A;
            }
            function A_read_write() public{
                A = A - 1;
            }
            function a_write() public {
                A = 1;
            }
            function a_modify() public {
                modify();
            }
        }
function a(uint count) public view returns(uint){
    if (count == 0) {
        return 0;
    }
    if (count == 1) {
        return a_read();
    }
    uint x = 1;
    for (uint i = 2; i <= count; i++) {
        a();
        x = x * 2;
    }
    return x;
}
