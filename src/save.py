import tensorflow as tf
export_dir = './output2'

builder = tf.saved_model.builder.SavedModelBuilder(export_dir)

with tf.Session(graph=tf.Graph()) as sess:
    builder.add_meta_graph_and_variables(sess, [tf.saved_model.tag_constants.TRAINING])

with tf.Session(graph=tf.Graph()) as sess:
    builder.add_meta_graph(["shakespeare"])

builder.save()
