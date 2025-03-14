pragma solidity ^0.8.0;
contract S4
{
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    modifier m {
        uint[] bar3 = bar.clone();
        uint[] foo3 = bar3.push(bar3.length);
        foo3[bar3.length] = bar3[bar3.length];
        emit(bar[bar3.length]);
        emit(foo3);
        _;
    }
}
contract S5 {
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    modifier m {
        uint[] foo2 = bar.push(bar.length);
        foo2[bar.length] = bar[bar.length];
        emit(bar[bar.length]);
        emit(foo2);
        _;
    }
}
contract S6 {
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    modifier m {
        uint[] bar3 = bar.clone();
        uint[] foo3 = bar3.push(bar3.length);
        foo3[bar3.length] = bar3[bar3.length];

        emit(bar[bar3.length]);
        emit(foo3);
        _;
    }
}
contract S7 {
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    modifier m {
        uint[] bar3 = bar.clone();

        uint[] foo3 = bar3.push(bar3.length);
        foo3[bar3.length] = bar3[bar3.length];

        emit(bar[bar3.length]);
        emit(foo3);
        _;
    }
}
contract S8 {
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    modifier m {
        uint[] bar3 = bar.clone();
        uint[] foo3 = bar3.push(bar3.length);
        uint [] bar4 = foo3.clone();
        foo3[bar3.length] = bar3[bar3.length];

        emit(bar[bar3.length]);
        emit(foo3);

        emit(bar4[bar3.length]);

        _;
    }
}
contract S9 {
    uint[] public bar;
    uint[] private baz;
    uint[] public bak;

    modifier m {
        uint[] bar3 = bar.clone();
        uint[] foo3 = bar3.push(bar3.length);
        uint [] bar4 = foo3.clone();
        foo3[bar3.length] = bar3[bar3.length];

        emit(bar[bar3.length]);
        emit(foo3);

        emit(bar4[bar3.length]);

        _;
    }
}
