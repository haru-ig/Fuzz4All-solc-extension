pragma solidity ^0.8.0;
contract G {
    uint private constant value = 1;

    {
        uint var5 = (G.value / G.b);
        uint var6;
        require((G.value % G.b) == 0, "");
        var5;
        var6;
    }
}
contract H {
    uint private constant value = 1;

    {
        uint var5;
        uint var6;
        require((G.value % G.b) == 0, "");
        var5;
        var6;
    }
}
contract I {
    uint private constant value = 1;

    {
        uint var5;
        uint var6;
        bool _call = true;
        if (_call) {
            uint var8;
            var8 = G.value % G.b;
        } else {
            G call1 = new G();
            var8 = call1.value % G.b;
        }
        var5;
        var6;
    }
}
