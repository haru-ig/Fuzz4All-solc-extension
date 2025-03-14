pragma solidity ^0.8.0;
interface I {
        function sub2() external returns(uint256);
}
contract S1 {
    I i;
    I i1;
    I i2;
    I i3;
    I i4;
    I i5;


    function add2() public view returns(uint256) {
        return i.sub2();
    }

    function test(bool  b) public returns(uint256) {

        uint256  sub = i.sub2();


        assembly {


            let x := i

            x := 1
        }






        sub = i.sub2();



        uint256 i = i.sub2();



        uint256 sub = i.sub2();



        uint256 sub = sub;
    }
}
