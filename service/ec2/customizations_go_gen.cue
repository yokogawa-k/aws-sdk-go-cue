// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/aws/aws-sdk-go/service/ec2

package ec2

import "time"

// customRetryerMinRetryDelay sets min retry delay
_#customRetryerMinRetryDelay: time.#Duration & 1000000000

// customRetryerMaxRetryDelay sets max retry delay
_#customRetryerMaxRetryDelay: time.#Duration & 8000000000
