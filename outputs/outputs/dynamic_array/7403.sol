pragma solidity ^0.8.0;
contract Test30{
    uint public dynArr;
    uint[] public dynArr2;
    function func() public {
        dynArr = 100;
        assert( dynArr == 100 );
        assert( dynArr2[1] == 100 );
        dynArr2[2] = 200;
        assert( dynArr == 100 );
        assert( dynArr2[1] == 100 );
        assert( dynArr2[2] == 200 );
    }
    function modifyTest() public {
        i = 5;
        for( uint32 j = i; j < 10; j++ ) {
            dynArr2.push( j*10 + 1000);
        }
        assert( dynArr == 100 );
        assert( dynArr2[1] == 100 );
        assert( dynArr2[2] == 200 );
        dynArr2[2] -= 5;
        assert( dynArr == 100 );
        assert( dynArr2[1] == 100 );
        assert( dynArr2[2] == 150 );
    }
}
