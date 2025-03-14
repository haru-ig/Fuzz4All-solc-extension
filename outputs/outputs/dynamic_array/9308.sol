pragma solidity ^0.8.0;


struct Node {
    uint id;
    string name;
}

function getNode(Node[] memory nodes, uint id) internal pure returns (Node memory) {
    if (0 > id || nodes.length <= id) {
        return Node({id: id, name: ""});
    }
    else {
        return nodes[id];
    }
}

struct Test {
    bool array1[3];
    bool array2[3][3];
}

function testStructAssign(Test memory test) internal pure returns (Test memory) {
    test.array2[2][2] = true;
    return test;
}

function testStructInit() internal {
    Node[] memory nodes = [
        Node({id: 1, name: "one"}),
        Node({id: 2, name: "two"}),
        Node({id: 3, name: "three"})
    ];

    Test memory test = Test({
        array1: [true, false, true],
        array2: [
            [true, true, false],
            [false, true, true]
        ]
    });

    test = testStructAssign(test);
    testStructInit();

    nodes[0].name = "updated name 1";
}
