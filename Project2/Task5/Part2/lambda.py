import os

def lambda_handler(event, context):
    print("Welcome to AWS Lambda")
    os.environ['greeting'] = "Hello"
    return "{} from Lambda!".format(os.environ['greeting'])