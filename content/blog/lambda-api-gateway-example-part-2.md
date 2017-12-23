---
title: "AWS Lambda and API Gateway Example (Part 2)"
date: 2017-12-22T17:38:32-08:00
draft: false
---

In Part 2, we walkthrough the process of creating an API endpoint via API Gateway. Navigate to the API Gateway in the AWS Console and hit `Create API`. Name the API and continue.

On the Resources screen, create a `GET` method via `Create Method` under the `Actions` menu.

Choose `Use Lambda Proxy integration`, select the region that our Lambda function belongs in, enter the name of our Lambda function, and then hit Save.

![create_method](https://user-images.githubusercontent.com/10470014/34316854-a33cfbf4-e754-11e7-84d6-2091ebf138a0.png)

Almost there! At this point, we can test out the endpoint via the test link on the left.

![test_endpoint](https://user-images.githubusercontent.com/10470014/34316868-3ad58c74-e755-11e7-90ac-519729f1df7e.png)

The last step is to deploy the endpoint. We can do this by going to `Deploy API` under `Actions`. Create and name the stage (prod) and then hit `Deploy`.

![deploy_api](https://user-images.githubusercontent.com/10470014/34316872-8eb2b8d0-e755-11e7-8377-6b6dd1661b0d.png)

Take note of the URL - our endpoint is now live!

