pragma solidity ^0.8.0;
interface Semantic2Changed2 {
    function balanceIncrease(uint256 _a) external pure;
}

pragma solidity ^0.8.0;
contract Semantic2Changed3 {

    function balanceIncrease(uint256 _a) external pure {

        semantic2Changed4( Semantic2Changed2(0xFeBbAD69Bd6E1005870934304a272a4F9C808708) );
    }


    function balanceChange(uint256 _a) external pure {

        Semantic2Changed2(Semantic2Changed1(0x579c0E8e04e2590ef155823405cE35eFf4eB8572)).balanceIncrease(_a);
    }

    function semantic2Changed4(Semantic2Changed2 _x) public pure {}
}
