fixture `My fixture`
    .page `http://localhost:3002/`;

test('MyTest', async t => {
    await t
        .expect(true).ok();
});
