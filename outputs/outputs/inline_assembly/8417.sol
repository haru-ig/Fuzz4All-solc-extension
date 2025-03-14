pragma solidity ^0.8.0;
contract  Sol1
{
    function test() public returns(uint) {


        uint r = 0x658141399a1b463a3ca5f315c93b07f7e77da579;
        uint a = 0x658141399a1b463a3ca5f315c93b07f7e77da579;
        uint b = 0x658141399a1b463a3ca5f315c93b07f7e77da579;

        assembly {
            r := a
            r := r - mul(a, b)
        }

        return r;

    }
}
