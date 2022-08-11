Parse.Cloud.define("myFunction1", async (request) => {
    //... 业务逻辑处理
    return results;
});

Parse.Cloud.job("test", async (request) => {
    const { params, headers, log, message } = request;
});
