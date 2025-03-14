pragma solidity ^0.8.0;
contract SemanticallyEquivlance3 {
    function changeSemantically1() public {
        SemanticallyEquivalent semanticallyEquivalent1;
        semanticallyEquivalent1.semanticallyDifferent1.push(uint(1));
        semanticallyEquivalent1.semanticallyDifferent1.push(uint(2));
    }

    function changeSemantically2() public {
        SemanticallyEquivalent semanticallyEquivalent2;
        semanticallyEquivalent2.semanticallyDifferent1.push(uint(1));
        semanticallyEquivalent2.semanticallyDifferent1.push(uint(2));
        semanticallyEquivalent2.semanticallyDifferent1.push(uint(3));
    }

    function changeSemantically3() public {
        SemanticallyEquivalent semanticallyEquivalent3;
        semanticallyEquivalent3.semanticallyDifferent2.push(uint(1));
        semanticallyEquivalent3.semanticallyDifferent2.push(uint(2));
        semanticallyEquivalent3.semanticallyDifferent1.push(uint(3));
    }

    function changeSemantically4() public {
        SemanticallyEquivalent semanticallyEquivalent4;
        semanticallyEquivalent4.semanticallyDifferent1.push(uint(1));
        semanticallyEquivalent4.semanticallyDifferent1.push(uint(2));
        semanticallyEquivalent4.semanticallyDifferent1.push(uint(3));
        semanticallyEquivalent4.semanticallyDifferent2.push(uint(4));
    }

    function changeSemantically5() public {
        SemanticallyEquivalent semanticallyEquivalent5;
        semanticallyEquivalent5.semanticallyDifferent5.push(uint(1));
        semanticallyEquivalent5.semanticallyDifferent5.push(uint(2));
    }
}
