using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace chatsharp_cs_project.Model
{
    [Serializable]
    public class MessageModel
    {

        public string Receiver { get; set; }
        public string Sender { get; set; }
        public string MessageText { get; set; }
        public string Timestamp { get; set; }

        public MessageModel(string receiver, string sender, string messageText, string timestamp)
        {
            Receiver = receiver;
            Sender = sender;
            MessageText = messageText;
            Timestamp = timestamp;
        }
    }
}
