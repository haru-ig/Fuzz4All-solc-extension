pragma solidity ^0.8.0;
contract OptimizelyExample106bMutated {
    uint public x;
    struct D1 { uint a; }
    struct D2 { uint b; }
    struct D3 { uint c; }
    struct D4 { D2[] f; }
    struct D5 { uint[] array1; uint[] array2; }
    function mutate( ) public {
        x = x & 0xFFFFFFFFFFFFFFFFFFFFFFF;
    }
    function test_old( ) public {
        x = x;
    }
    function test___old( ) public {
        x = x;
    }
}

pragma solidity ^0.8.0;
contract OptimizelyExample107bSemiEquivalentTest {
    Optic testOptic;
}
contract MutatedTest {
    Optic testOptic;
}
contract EVMExampleOptics {
    struct D1 {uint a; D2[] f;}
    struct D2 { uint b1; uint b2; uint b3;}
    struct D3 { uint c; D3[] f; uint d;}
    struct D4 { D2[] f1; }
    struct D5 { uint[] array1; uint[] array2; }

    Optic optic;
    function mutate( )( ) public {
        testOptic.test2_0( );

        MutatedTest testMutated;
        testMutated.test_3( );
    }
    function call( )( )( ) public {
        testOptic.test3_0( );

        MultifunctionOptic testMultifunction;
        testMultifunction.test4_0( );
    }
    function new_( ) public {
        optic = new Optic( );
    }
}
contract EVMExampleOpticsSemiEquivalentTest {
    Optic testOptic;
}
contract MutatedSemiEquivalentTest {
    Optic testOptic;
}
contract EVMExampleOpticsMutatedSemiEquivalentTest {
    Optic testOptic;
}
contract EVMExampleOpticsOldSemiEquivalent Test {
    Optic testOptic;
}
contract MutatedOldSemiEquivalentTest {
}
contract OptimizelyExample105aSemiEquivalentTest {
    Optic testOptic;
}
contract OptimizelyExample10
