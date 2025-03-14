pragma solidity ^0.8.0;
contract Example
{
    uint x;
    function setter(uint _x) public {
        x = _x;
    }

    uint[] arr;
    fixed uint[] arr1;
    uint8 x1;
    uint[] arr_i;
    uint[] arr1_i;
    mapping(uint => uint) m;
    mapping(uint => uint[]) m_i;
    function get_data() public {
        uint[] memory a = new uint[](3);
        a[0] = 1;
        a[1] = 2;
        a[2] = 3;

        for (uint i = 0; i < a.length; i++) {
            uint my_val = a[i];

            a[1] = my_val;
        }
        a = new uint[](0);
    }
    function setter(uint _x) public {x = _x;}
    function addme(uint _xi) public {x = x + _xi;}
    function addme2(uint[] memory _x) public {for (uint i = 0; i < _x.length; i++) {x = x + _x[i];}}
    uint m;
    mapping(uint => uint) mm;
    mapping(uint => uint[]) mm_i;
    struct S { uint x; uint[] y } s;
    function f() public {
        S memory s_;
        s_.x=7;
        s_.y=[1,2,3,4,5];
    }
    function g() public {
        uint x_i = m[7];
        uint x_ii = mm[7];
        uint x_ii_i = mm_i[7];
        for (uint i = 0; i < 100; i++) {
            S memory s_;
            s_ = S(5, [1,2,3,4,5,6,7,8,9,10]);
            for (uint j = 0; j < 4; j++) {
                s_.y[j] = i * 2;
            }
        }
    }
}
