// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/aws/aws-sdk-go/service/ec2

package ec2

import "github.com/aws/aws-sdk-go/aws/client"

// EC2 provides the API operation methods for making requests to
// Amazon Elastic Compute Cloud. See this package's package overview docs
// for details on the service.
//
// EC2 methods are safe to use concurrently. It is not safe to
// modify mutate any of the struct's properties though.
#EC2: {
	Client?: null | client.#Client @go(,*client.Client)
}

#ServiceName: "ec2"
#EndpointsID: "ec2"
#ServiceID:   "EC2"
